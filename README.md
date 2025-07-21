# ADB
`File Extractor.ipnyb`
## Extract
1. Copy all defined filetypes from device
2. Dump into `Dump/[DeviceSerialNumber]/` with filename `[Month]_[Date]_[ImageName].[ImageType]`

## Wipe
1. Nuke - Delete all device data from `/sdcard/`

# Data

## Prep - Imputation
`Impute.ipnyb`
* Mean Impute
* Median Impute
* Knn Impute - Recommended for correlational pretest posttest scores.

## Analysis
`Data Analysis.ipnyb`
1. Compute difference in Posttest - Pretest
2. Compute Normality with Shapiro-Wilk test
  1. If normal
     1. Paired t test to measure signifigance
     2. Cohen's D to measure effect
  2. Else not normal
     1. Wilcoxon to measure signifigance
     2. Rank bisserial correaltion to measure effect
