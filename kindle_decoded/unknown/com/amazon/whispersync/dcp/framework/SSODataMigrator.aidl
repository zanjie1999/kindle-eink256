package com.amazon.dcp.framework;

/**
 * This class is used to migrate data from DCP to the new SSO apk
 */
interface SSODataMigrator
{
    ParcelFileDescriptor getDcpProtectionStore();
    
    ParcelFileDescriptor getAnonymousCredentialsStore();
    
    void confirmDataMigrated();
}