#!/bin/bash

FULL_CONNECTION_STRING=$(cat /app/atlas_cluster_connection_string_with_app_name.txt)

MUTATION="db.accounts.replaceOne({ _id: ObjectId('62d6e04ecab6d8e130497485')}, { account_id: 'MDB905411541', account_holder:>

mongosh $FULL_CONNECTION_STRING/bank --quiet --eval "$MUTATION" 
