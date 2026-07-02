package com.android.amazon.dcp.ota;

/**
 * API for deletion callbacks from the Package Manager.
 */
oneway interface IAmazonPackageDeleteObserver {
    void packageDeleted(in boolean succeeded);
}