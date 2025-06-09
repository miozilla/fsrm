# Define variables
$ruleName = "ConfidentialDataRule"
$namespace = "C:\Shares\SensitiveFiles"
$property = "ConfidentialityLevel"
$propertyValue = "High"
$classificationMechanism = "Content Classifier"
# $regexPattern = "(?i)\b(secret|confidential|classified)\b"
$regexPattern = "4[0-9]{12}(\d{3})?$"


# Create the classification rule using regex
New-FsrmClassificationRule -Name $ruleName `
    -Namespace @($namespace) `
    -Property $property `
    -PropertyValue $propertyValue `
    -ClassificationMechanism $classificationMechanism `
    -ContentRegularExpression $regexPattern

Write-Output "FSRM Classification Rule '$ruleName' created successfully!"