#!/bin/bash

. ./export-dev.bash

TOKEN=eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI4cEd1bk9aMC1vLUdCV3FTUTM1U05XcUNXT1BMOG1fN200V2lhR2xwYUxVIn0.eyJleHAiOjE2OTUwNDY2MDEsImlhdCI6MTY5NTA0NTcwMSwiYXV0aF90aW1lIjoxNjk1MDQ1NzAxLCJqdGkiOiIzNzBhOGU5NC01NTc5LTQ0MjYtYTYxOC04ZmJlODllMmQyNTgiLCJpc3MiOiJodHRwczovL2tleWNsb2FrLnByb21pZC5wcm9tLmNvLnRoL2F1dGgvcmVhbG1zL3Byb21pZCIsImF1ZCI6ImFjY291bnQiLCJzdWIiOiI0NWNjY2E2Ni02ZDBlLTQ0MTUtOWM3Yy0xODA4ZjNjZGE1MzEiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJscHItYXBpIiwic2Vzc2lvbl9zdGF0ZSI6Ijg5ZDY0ZTg1LWJlYTQtNDdmNy1iM2Q4LWFlZTdiYjY5ODc2MSIsImFjciI6IjEiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiIsImRlZmF1bHQtcm9sZXMtcHJvbWlkIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJlbWFpbCBwcm9maWxlIiwic2lkIjoiODlkNjRlODUtYmVhNC00N2Y3LWIzZDgtYWVlN2JiNjk4NzYxIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJuYW1lIjoiU2V1YnBvbmcgTW9uc2FyIiwicHJlZmVycmVkX3VzZXJuYW1lIjoicGphbWVuYWphIiwiZ2l2ZW5fbmFtZSI6IlNldWJwb25nIiwiZmFtaWx5X25hbWUiOiJNb25zYXIiLCJlbWFpbCI6InBqYW1lLmZiQGdtYWlsLmNvbSJ9.cfFRjai7bmVzSqme_J1RuHowafuZJ_M5dCZF_pWaid8TCMbRucux6R_cqFeILLIG1w1lJ3JxvEUwi1BCCSvykEvu74yv12sikks3fng-63AC3y0srW5oxXNlQtcSzhZvDKJYzxrdhmKsqDT-la0hYlNW3Xtb6W8tZ2dh1T7q31_qg1gqjr8Du5jqpx8e8ibLfvgn9H3-01A3zFJEi1LwprgDxRCjw_Ud1SaxLm_zqpp7qjgwivuPqS4QDK1cIDnc85w0ah74caDIOD2f5s7NY3VFIpa_OqlrTa9MIA4CmTdan9LoJ2toX48--bkDKJHVo_n9jkYDXCo_LubxbyIflQ

TOKEN_BASE64=$(echo -n ${TOKEN} | base64 -w0 )

curl -s -X POST ${ENDPOINT_GET_KEYS} -H "Authorization: Bearer ${TOKEN_BASE64}"

#-H "Authorization: Bearer ${TOKEN_BASE64}"
#-u ${AUTH_USER}:${AUTH_PASSWORD}
