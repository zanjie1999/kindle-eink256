// Copyright 2012 Amazon.com. All rights reserved.
package com.amazon.dcp.framework;

/**
 * @hide
 * Used to migrate data from package to package when upgrading across a DCP refactor.
 */
interface IDataMigrator
{
    /** Marks a shared preferences file for migration, returning a file descriptor allowing copying of that file. */
    ParcelFileDescriptor migrateSharedPrefs(String name);

    /** Deletes a shared preferences file if it has been migrated earlier in this session. */
    void deleteMigratedSharedPrefs(String name);

    /** Marks a database file for migration, returning a file descriptor allowing copying of that file. */
    ParcelFileDescriptor migrateDatabase(String name);

    /** Deletes a database file if it has been migrated earlier in this session. */
    void deleteMigratedDatabase(String name);
}
