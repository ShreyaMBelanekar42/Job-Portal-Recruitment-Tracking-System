# USER STORIES

## HR User Stories 
1. As an HR, I want to filter candidates by status (new, shortlisted, rejected) so that I can view them easily.
2. As an HR, I want to auto-shortlist candidates based on skills and experience so that I can reduce manual effort.
3. As an HR, I want to assign shortlisted candidates to hiring managers so that interviews can start quickly.
4. As an HR, I want to view daily and monthly hiring reports so that I can analyze recruitment performance.
5. As an HR, I want to receive notifications when a candidate is shortlisted or selected so that I stay updated.

## Recruiter User Stories
1. As a recruiter, I want to upload multiple resumes at once so that I can save time.
2. As a recruiter, I want to schedule interviews from the system so that coordination is easier.
3. As a recruiter, I want to update candidate status after each round so that tracking is accurate.
4. As a recruiter, I want the system to auto-generate a Google Meet link while scheduling interviews so that I don’t have to create meeting links manually.

## Hiring Manager User Stories
1. As a hiring manager, I want to view assigned candidate profiles so that I can prepare for interviews.
2. As a hiring manager, I want to submit interview feedback online so that decisions are documented.
3. As a hiring manager, I want to receive a reminder 15 minutes before the scheduled interview so that I don’t miss it.

## Candidate User Stories
1. As a candidate, I want to apply for jobs online so that I don’t have to send emails.
2. As a candidate, I want to track my application status so that I know where I stand.
3. As a candidate, I want to attend video interviews so that I don’t need to travel.
4. As a candidate, I want to receive notifications when I am shortlisted or rejected so that I stay informed about my application.
5. As a candidate, I want to view my job application history so that I can track all the roles I have applied for.

# ACCEPTANCE CRITERIA

1. As an HR, I want to filter candidates by status (new, shortlisted, rejected) so that I can view them easily.
> Given I am logged in as HR <br>
When I select a status filter (New / Shortlisted / Rejected)<br>
Then only candidates of that status should be displayed<br>
And the total count should update automatically<br>
And filters should work within 2 seconds<br>

As an HR, I want to auto-shortlist candidates based on skills and experience so that I can reduce manual effort.
> Give I am logged in as HR<br>
When I click on Auto-shortlist button<br>
Then the system should evaluate candidate profiles based on predefined skills and experience criteria<br>
And only the shortlisted candidates should be displayed in the list<br>
And the total shortlisted count should update automatically<br>
And auto-shortlisting should work within 10 seconds<br>

As an HR, I want to assign shortlisted candidates to hiring managers so that interviews can start quickly.
> Give I am logged in as HR<br>
When I click on assign button across each candidate,<br> 
Then hiring managers list should be displayed<br>
When I select any one of the hiring managers<br>
Then that candidate should be assigned to that selected hiring manager<br>
And the hiring manager should receive a notification<br>

As an HR, I want to view daily and monthly hiring reports so that I can analyze recruitment performance.
> Given I am logged in as HR<br>
When I navigate to the Dashboard<br>
Then I should see sections for Daily Hiring Report and Monthly Hiring Report<br>
Then the Daily Report should show:<br>
    * Total applications received<br>
    * Total shortlisted<br>
    * Total selected<br>
And the Monthly Report should show the same metrics aggregated by month<br>

As an HR, I want to receive notifications when a candidate is shortlisted or selected so that I stay updated.
> Given I am logged in as HR<br>
When a candidate is marked as Shortlisted and Selected<br>
Then I should receive a real-time system notification<br>
Then the notification should display:<br>
    * Candidate Name<br>
    * Job Role<br>
    * Updated Status<br>

As a recruiter, I want to upload multiple resumes at once so that I can save time.
> Given I am logged in as Recruiter<br>
When I navigate to the Resume Upload page<br>
Then I should see an option for Bulk Resume Upload<br>
When I select multiple resume files<br>
Then the system should accept all supported formats (PDF, DOCX)<br>
Then the bulk upload process should complete within 20 seconds<br>
Then I should see a success message showing:<br>
    * Number of resumes uploaded<br>
    * Number of failed uploads (if any)<br>

As a recruiter, I want to schedule interviews from the system so that coordination is easier.
> Given I am logged in as Recruiter<br>
And a candidate is in Shortlisted status<br>
When I open the candidate profile<br>
Then I should see a Schedule Interview option<br>
When I select interview date, time, and interviewer<br>
Then the interview should be successfully scheduled<br>
Then the candidate should receive interview details via:<br>
    * Email<br>
    * System notification<br>

As a recruiter, I want to update candidate status after each round so that tracking is accurate.
> Given I am logged in as Recruiter<br>
When I open a candidate profile<br>
Then I should see an option to update candidate status<br>
Then available statuses should include:<br>
    * Shortlisted<br>
    * Interview Scheduled<br>
    * Rejected<br>
    * Selected<br>
When I update the status<br>
Then the new status should be saved and visible to HR and Hiring Managers<br>

As a recruiter, I want the system to auto-generate a Google Meet link while scheduling interviews so that I don’t have to create meeting links manually.
> Given I am scheduling an interview<br>
When I select the interview date and time<br>
Then a Google Meet link should be auto-generated<br>
Then the meeting link should be:<br>
    * Saved with the interview record<br>
    * Visible to Recruiter and Candidate<br>
Then the generated link should be sent to the candidate<br> via email and system notification<br>

As a hiring manager, I want to view assigned candidate profiles so that I can prepare for interviews.
> Given I am logged in as a hiring manager<br>
When I navigate to the Dashboard<br>
Then I should see a section for Viewing assigned candidates<br>
When I click on that section<br>
Then I should see a list of assigned candidates by the HR<br>
Given candidates are assigned to me<br>
Then only my assigned candidates should be visible<br>
And other Hiring Managers’ candidates should not be visible<br>

As a hiring manager, I want to submit interview feedback online so that decisions are documented.
> Given I am logged in as a hiring manager<br>
When I am done with the candidate interview<br>
Then I should see the interview feedback form that asks for following details:<br>
    * Candidate Name<br>
    * Candidate ID / Application ID<br>
    * Job Role / Position Applied<br>
    * Interview Round (Technical / HR / Managerial / Final)<br>
    * Interviewer Name<br>
    * Interviewer Role (Hiring Manager / Tech Lead / HR)<br>
    * Department<br>
And the interview feedback form details should be stored in the system.<br>

As a hiring manager, I want to receive a reminder 15 minutes before the scheduled interview so that I don’t miss it.
> Given I am logged in as a hiring manager<br>
When there is any upcoming interview<br>
Then I want to receive a notification on the system and on email as well before 15 minutes of scheduled interview time<br>
And that notification should contain video call link, interview date, time and candidate details(Name and Applied Job Name)<br>

As a candidate, I want to apply for jobs online so that I don’t have to send emails.
> Given I am logged in as a Candidate<br>
When I open a job listing<br>
Then I should see an “Apply” button<br>
When I click on Apply<br>
Then I should be able to submit:<br>
    * Resume<br>
    * Contact details<br>
    * Required documents<br>
Then I should see a success confirmation message<br>
And my application status should show as "Applied"<br>

As a candidate, I want to track my application status so that I know where I stand.
> Given I am logged in as a candidate<br>
When I navigate to All applications page<br>
And I select any one application<br>
Then along with Job details I want to see my application status (Shortlisted/ Interview scheduled/ Rejected)<br>
And I should receive a notification informing about application status through email<br>
And the application status so be real time<br>

As a candidate, I want to attend video interviews so that I don’t need to travel.
> Given an interview is scheduled for me<br>
When I open my interview details<br>
Then I should see a “Join Interview” button<br>
When I click on “Join Interview”<br>
Then I should be redirected to the video call link (Google Meet / Zoom)<br>
Then I should be able to:<br>
    * Join from mobile<br>
    * Join from laptop<br>

As a candidate, I want to receive notifications when I am shortlisted or rejected so that I stay informed about my application.
> Given my application status changes<br>
Then I should receive:<br>
    * Email Notification<br>
    * System Notification<br>

As a candidate, I want to view my job application history so that I can track all the roles I have applied for.
> Given I am logged in as a candidate<br>
When I navigate to All applications page<br>
Then I should see all the job applications that I have previous applied for with following details <br>
    * Job Name<br>
    * Applied Date<br>
    * Current Status<br>

