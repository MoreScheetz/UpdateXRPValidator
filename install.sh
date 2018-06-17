# Credit : Wietse Wind 
#
#
# This Script is assuming you did the default setup to install the rippled validator via Docker
#
#


# Stop Docker Containter -------------------------------------------

docker stop rippledvalidator

#-------------------------------------------------------------------

# Remove Docker Container ------------------------------------------

docker rm rippledvalidator

--------------------------------------------------------------------

# Remove RippledValidator Local Image File -------------------------

docker rmi xrptipbot/rippledvalidator:latest

#-------------------------------------------------------------------

# Reinstall Docker Rippled Validator with latest Image + Attach Existing Keystore

docker run -dit --name rippledvalidator -p 51235:51235 -v /keystore/:/keystore/ xrptipbot/rippledvalidator:latest

-----------------------------------------------------------------------------------------------------------------

# Verify Updated Version Number ---------------------------------------------------------------------------------

docker exec rippledvalidator /opt/ripple/bin/rippled server_info|grep version

-----------------------------------------------------------------------------------------------------------------
