#!/usr/bin/env groovy

@Library('lco-shared-libs@0.1.0') _

pipeline {
	agent any
	stages {
		stage('Build Docker image') {
			steps {
				sh 'make'
			}
		}
	}
	post {
		always { postBuildNotify() }
	}
}
