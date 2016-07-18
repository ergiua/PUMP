/*
helper.cuh
author: Brian Ichter

This file includes helper methods used throughout the code. 
*/

#pragma once

#include <stdio.h>
#include <vector>
#include <iostream>
#include <string>
#include <ctime>
#include <cstdlib>
#include <math.h>
#include <fstream>

#define _USE_MATH_DEFINES

void printArray(float* array, int dim1, int dim2, std::ostream &stream);
void printArray(int* array, int dim1, int dim2, std::ostream &stream);
void printArray(bool* array, int dim1, int dim2, std::ostream &stream);
void printArray(char* array, int dim1, int dim2, std::ostream &stream);
float avgArray(float* array, int length);
void copyArray(float* arrayTo, float* arrayFrom, int length);
void multiplyArrays(float* A, float* B, float* C, int rowsA, int colsA, int rowsB, int colsB);
void scalarMultiplyArray(float *A, float b, float *C, int rows, int cols);
void subtractArrays(float* A, float* B, float* C, int rows, int cols);
void horizConcat(float* A, float *B, float *C, int nA, int nB, int m);
void vertConcat(float* A, float *B, float *C, int n, int mA, int mB);
void transpose(float* A, int rows, int cols);
void transpose(float* Atrans, float* A, int rows, int cols) ;
float calculateUnitBallVolume(int dim);
float calculateConnectionBallRadius(int dim, int samplesCount);
// output of this file goes into matlabviz/vizSoln.m
int printSolution(int samplesCount, float *samples, int *d_edges, float *d_costs);