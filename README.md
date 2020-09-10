# Flixter - README
This application is an online video marketplace. Can also be used to structure educatoinal courses with multiple sections. Has user authentication using Devise, accepts card payments using Stripe,

## Home page :
On the homepage click "Learn More" to advance to courses index. Flixter title in top center will take user back to home screen when clicked.
Flixter https://flixter-matt-parr.herokuapp.com/)

![Homepage.png](./app/assets/images/Homepage.png)

To open the top navigation click the box in the upper left corner. In the top navigation menu a user can sign in, access user dashboard and lessons, (search bar inactive currently)
Flixter Home https://flixter-matt-parr.herokuapp.com/

![TopNavMenu.png](./app/assets/images/TopNavMenu.png)

In the courses index select course name or click on "more details" to view individual course lessons,
Courses https://flixter-matt-parr.herokuapp.com/courses

![CoursesIndex.png](./app/assets/images/CoursesIndex.png)

On the course page user can enroll and pay for lessons using * [Stripe] (stripe.com) payment processing. Imported with Ruby 'stripe gem',
Paymeny processing is currently in 'test mode' so no real transactions can be done. (test card no. 4242 4242 4242 4242, exp date: any after today,
cvc: any 3 digits) Payment will enroll student into course.

![Enroll.png](./app/assets/images/Enroll.png)

![PayWithCard.png](./app/assets/images/PayWithCard.png)

Clicking on lessons brings the user to specific lesson page with video, (carrierwave)

User dashboard shows what courses user added and/or is enrolled in,

Footer hosts links to adding a course, accessing user dashboard, different about pages, contact info and social media links,

* System dependencies: Postgresql, stripe, aws

