#!/usr/bin/env bash

psql -U "$POSTGRES_USER" -c "CREATE EXTENSION IF NOT EXISTS citext;"
psql -U "$POSTGRES_USER" -c "CREATE DATABASE IF NOT EXISTS pleroma;"
