package com.android.amazon.dcp.ota;

/**
 * API for installation callbacks from the Package Manager.
 */
oneway interface IAmazonPackageInstallObserver {
    void packageInstalled(in String packageName, int returnCode);
}
