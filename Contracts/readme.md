Exam Smart Contract
Vision
The vision of this project is to create a transparent, automated, and tamper-proof examination system using blockchain technology. The goal is to ensure fair evaluation of student answers, eliminate the possibility of cheating, and provide a reliable record of exam results.
Features
Fixed Question Set: The contract comes with a predefined set of questions and correct answers, eliminating the need for additional inputs.
Automatic Evaluation: The contract automatically evaluates submitted answers, ensuring that every question is counted, and missing answers are treated as incorrect.
Tamper-Proof Records: Once the exam is concluded, the results are stored immutably on the blockchain, ensuring that the scores cannot be altered.
Instructor Control: Only the instructor has the authority to start the exam, set answers, and end the exam.
Score Retrieval: Instructors can retrieve the scores of students at any time after the exam has concluded.
Contract Information
Instructor: The address of the person who deploys the contract and has control over the exam process.
Total Questions: The contract supports a fixed number of questions (5 in this case).
Correct Answers: Predefined correct answers for each question.
Student Answers: Mapping of students' answers to their respective questions.
Scores: Stores the scores for each student based on their submitted answers.
Exam Status: Indicates whether the exam is ongoing or has ended.
Architecture
Instructor Role: Managed by the person deploying the contract. The instructor can start the exam, set the correct answers, and end the exam.
Student Interaction: Students can submit their answers to the exam questions during the exam period. Their answers are evaluated against the correct answers stored in the contract.
Score Calculation: The contract automatically calculates the score for each student based on the number of correct answers submitted.
End Exam: Once the instructor ends the exam, no further answers can be submitted or scores recalculated.
Future Scope
Dynamic Question Addition: Allow the instructor to add or modify questions and correct answers dynamically before the exam starts.
Multiple Exams: Extend the contract to support multiple exams with different sets of questions and answers.
Detailed Feedback: Provide detailed feedback to students on their performance, indicating which questions they got wrong.
Grading System: Introduce a grading system based on the score, such as A, B, C, etc.
Blockchain Interoperability: Expand the contract's compatibility to work with multiple blockchain networks for wider accessibility.
