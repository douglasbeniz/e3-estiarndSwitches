require estiarndSwitches, 0.0.1


# -----------------------------------------------------------------------------
# IOC common settings
# -----------------------------------------------------------------------------
epicsEnvSet("IP_ADDR",        "129.129.130.174")
epicsEnvSet("PORT_ADDR",      "5000")
epicsEnvSet("PREFIX",         "PSI-ESTIARND:MC-MCU-01")


# Loading database
dbLoadRecords(estiarndSwitches.db, "P=$(PREFIX), PORT=$(PORT_ADDR), ADDR=$(IP_ADDR)")

# Start the IOC
iocInit
