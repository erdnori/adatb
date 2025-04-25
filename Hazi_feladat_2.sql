{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE Ugyfel_Masked (\r\n",
                "    LOGIN nvarchar(255) PRIMARY KEY,\r\n",
                "    EMAIL nvarchar(255) MASKED WITH (Function='email()'),\r\n",
                "    NEV nvarchar(255) MASKED WITH (Function='partial(1,\"XXX\",1)'),\r\n",
                "    SZULEV INT MASKED WITH (Function='default()'),\r\n",
                "    NEM nvarchar(1) NULL,\r\n",
                "    CIM nvarchar(255) MASKED WITH (Function=\"default()\")\r\n",
                ")"
            ],
            "metadata": {
                "azdata_cell_guid": "e9f429a4-33ff-4ee6-9432-601d8d7dbecb",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}