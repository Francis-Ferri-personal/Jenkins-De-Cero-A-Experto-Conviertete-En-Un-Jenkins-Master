#!/bin/bash
# Script para hacer un backup de mysql y subirlo a AWS S3

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5

# Se le agrega el date por que al parecer en AWS se sobreescriben llos archivos, no se guaradn en versiones
DATE=$(date +%H-%M-%S)

musqldump -u root -h $DB_HOST -p$DB_PASSWORD  $DB_NAME > /tmp/db-$DATE.sql

# No hay problema en dejarlo en hardcode por que lo importante es la contraseña
export AWS_ACCESS_KEY_ID=AKIA33N7YLKZEN7G7HOY
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET

aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME