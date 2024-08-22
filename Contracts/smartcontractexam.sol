// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Exam {
    address public instructor;
    uint public totalQuestions = 5; // Fixed number of questions
    mapping(uint => uint8) private correctAnswers;
    mapping(address => mapping(uint => uint8)) private studentAnswers;
    mapping(address => uint) public scores;
    bool public examEnded;

    constructor() {
        instructor = msg.sender;
        examEnded = false;

        // Set the correct answers directly
        correctAnswers[1] = 2;
        correctAnswers[2] = 3;
        correctAnswers[3] = 1;
        correctAnswers[4] = 4;
        correctAnswers[5] = 2;
    }

    modifier onlyInstructor() {
        require(msg.sender == instructor, "Only instructor can perform this action");
        _;
    }

    modifier examOngoing() {
        require(!examEnded, "The exam has ended");
        _;
    }

    // Students submit their answers
    function submitAnswer(uint questionNumber, uint8 answer) public examOngoing {
        require(questionNumber > 0 && questionNumber <= totalQuestions, "Invalid question number");
        require(answer >= 1 && answer <= 4, "Invalid answer option");
        studentAnswers[msg.sender][questionNumber] = answer;
    }

    // Calculate and store the score for a student
    function calculateScore() public examOngoing {
        uint score = 0;
        for (uint i = 1; i <= totalQuestions; i++) {
            if (studentAnswers[msg.sender][i] == correctAnswers[i]) {
                score += 1;
            }
        }
        scores[msg.sender] = score;
    }

    // End the exam, no more submissions or calculations
    function endExam() public onlyInstructor {
        examEnded = true;
    }

    // Instructor can retrieve the score of a student
    function getStudentScore(address student) public view onlyInstructor returns (uint) {
        return scores[student];
    }
}