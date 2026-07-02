// Copyright 2011 Amazon.com. All Rights reserved.

package com.android.amazon.dcp.ota;

import  com.android.amazon.dcp.ota.IAmazonPackageInstallObserver;
import  com.android.amazon.dcp.ota.IAmazonPackageDeleteObserver;
import  com.android.amazon.dcp.ota.IAmazonPackageDataObserver;
import android.net.Uri;


/**
 * API for Invoking hidden PackageManager methods.
 */
oneway interface IAmazonPackageManager {
    void installPackage(in Uri filePath, IAmazonPackageInstallObserver observer, int flags, String installerPackageName);
    void deletePackage(String packageName, IAmazonPackageDeleteObserver observer, int flags);
    void deleteApplicationCacheFiles(in String packageName, IAmazonPackageDataObserver observer);
    void clearApplicationUserData(in String packageName, IAmazonPackageDataObserver observer);
}
