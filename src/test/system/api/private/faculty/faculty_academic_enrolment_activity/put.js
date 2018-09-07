
const chai = require('chai');
const chaiHttp = require('chai-http');
const chaiExclude = require('chai-exclude');

chai.use(chaiExclude);
const app = require('../../../../../../bin/www');
const methods = require('../../../../../../lib/data/methods');


process.nextTick(() => {
  app.callback = run;
});

chai.use(chaiHttp);
const { expect } = chai;

const newPeople = [];
const newEntity = [];
const newEntityType = [];
const newCoursesOffered = [];
const FAEA = [];
const newFAEA = [];


describe('/PUT/:id ', () => {
  beforeEach((done) => {
    methods.People.peopleMethods.deleteAllPeople()
      .then(() => {
        console.log('deleted people');

        methods.Entities.entityTypeMethods.deleteAllEntityTypes()
          .then(() => {
            console.log('deleted entitytypes');

            methods.Entities.entityMethods.deleteAllEntity()
              .then(() => {
                console.log('deleted entities');

                methods.Academics.coursesOfferedMethods.deleteAllCoursesOffered()
                  .then(() => {
                    console.log('deleted coursesoffered');

                    methods.Faculty.facultyEAMethods.deleteAllFacultyAcademicEnrolmentActivity()
                      .then(() => {
                        console.log('deleted faculty academic activity');
                        const newpeople = {
                          first_name: 'John',
                          middle_name: 'M',
                          last_name: 'Doe',
                          gender: 'M',
                          date_of_birth: '1987-01-01',
                          nationality: 'Indian',
                        };

                        methods.People.peopleMethods.addPeople(newpeople)
                          .then((PEOPLE) => {
                            console.log('added people');
                            newPeople.push(PEOPLE.dataValues);
                            console.log(newPeople);
                            const entitytype = {
                              entity_type: 'people',
                              entity_type_slug: 'about',
                            };
                            methods.Entities.entityTypeMethods.addEntityType(entitytype)
                              .then((EntityType) => {
                                console.log('added entitytypes');
                                newEntityType.push(EntityType.dataValues);
                                const entity = {
                                  entity_name: 'cse',
                                  entity_slug: 'about',
                                  entity_type_id: newEntityType[0].id,
                                };
                                methods.Entities.entityMethods.addEntity(entity)
                                  .then((Entity) => {
                                    console.log('added entity');
                                    newEntity.push(Entity.dataValues);

                                    const coursesoffered = {
                                      official_course_id: 'Course ID',
                                      name: 'Name',
                                      department_id: newEntity[0].id,
                                      credits: 4,
                                      valid_start_date: '2012-12-07',
                                      valid_end_date: '2014-04-08',
                                      duration_in_days: 5,
                                    };
                                    methods.Academics.coursesOfferedMethods.addCoursesOffered(coursesoffered)
                                      .then((CoursesOffered) => {
                                        newCoursesOffered.push(CoursesOffered.dataValues);
                                        const faea = {
                                          people_id: newPeople[0].id,
                                          course_id: newCoursesOffered[0].id,
                                          activity: 'X',
                                          date_time: '2012-12-09 11:55:55',
                                        };
                                        methods.Faculty.facultyEAMethods.addFacultyAcademicEnrolmentActivity(faea)
                                          .then((Faea) => {
                                            FAEA.push(Faea.dataValues);

                                            const ret = FAEA.map((values) => {
                                              const val = values;
                                              delete val.created_at;
                                              delete val.updated_at;
                                              return val;
                                            });
                                            newFAEA.push(ret[0]);
                                            done();
                                          })
                                          .catch((err) => {
                                            console.log(err);
                                          });
                                      })
                                      .catch((err) => {
                                        console.log(err);
                                      });
                                  })
                                  .catch((err) => {
                                    console.log(err);
                                  });
                              })
                              .catch((err) => {
                                console.log(err);
                              });
                          })
                          .catch((err) => {
                            console.log(err);
                          });
                      })
                      .catch((err) => {
                        console.log(err);
                      });
                  })
                  .catch((err) => {
                    console.log(err);
                  });
              })
              .catch((err) => {
                console.log(err);
              });
          })
          .catch((err) => {
            console.log(err);
          });
      })
      .catch((err) => {
        console.log(err);
      });
  });
  it('it should UPDATE faculty given the id', (done) => {
    methods.Faculty.facultyEAMethods.getAllFacultyAcademicEnrolmentActivity()
      .then((res) => {
        const enrolmentId = res[0].dataValues.id;
        const faea = {
          peopleId: newPeople[0].id,
          courseId: newCoursesOffered[0].id,
          activity: 'Y',
          dateTime: '2012-12-09 11:55:55',
        };
        console.log('entered faculty activity');
        chai.request(app)
          .put(`/private/faculty/faculty_academic_enrolment_activity/${enrolmentId}`)
          .send(faea)
          .end((err, result) => {
            expect(result).to.have.status(200);
            expect(result.body).to.be.a('object');
            expect(result.body.status).to.eql('updated faculty');

            done();
          });
      })
      .catch((err) => {
        console.log(err);
      });
  });

  afterEach((done) => {
    methods.People.peopleMethods.deleteAllPeople()
      .then(() => {
        console.log('deleted people');

        methods.Entities.entityTypeMethods.deleteAllEntityTypes()
          .then(() => {
            console.log('deleted entitytypes');

            methods.Entities.entityMethods.deleteAllEntity()
              .then(() => {
                console.log('deleted entities');

                methods.Academics.coursesOfferedMethods.deleteAllCoursesOffered()
                  .then(() => {
                    console.log('deleted coursesoffered');

                    methods.Faculty.facultyEAMethods.deleteAllFacultyAcademicEnrolmentActivity()
                      .then(() => {
                        console.log('deleted faculty_academic_enrolment_activity');
                        done();
                      })
                      .catch((err) => {
                        console.log(err);
                      });
                  })
                  .catch((err) => {
                    console.log(err);
                  });
              })
              .catch((err) => {
                console.log(err);
              });
          })
          .catch((err) => {
            console.log(err);
          });
      })
      .catch((err) => {
        console.log(err);
      });
  });
});
