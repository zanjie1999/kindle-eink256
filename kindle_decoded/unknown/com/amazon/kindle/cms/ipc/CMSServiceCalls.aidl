package com.amazon.kindle.cms.ipc;

import com.amazon.kindle.cms.ipc.ItemInfo;
import com.amazon.kindle.cms.ipc.ItemInfoGroup;
import com.amazon.kindle.cms.ipc.WidgetInfo;
import com.amazon.kindle.cms.ipc.MLTItemInfo;
import com.amazon.kindle.cms.ipc.BulkEntry;
import com.amazon.kindle.cms.ipc.SoftwareVersion;
import com.amazon.kindle.cms.ipc.ItemSimilaritiesInfo;

// Required for building in ACOS
import android.os.ParcelFileDescriptor;

interface CMSServiceCalls
{
    SoftwareVersion validateVersion(in SoftwareVersion clientVersion);
    void registerSources(in List<String> sourceIds, String packageName);
    void update(String sourceId, String libraryId, String itemId, in ItemInfo fields);
    void delete(String sourceId, String libraryId, String itemId);
    void setSimilarities(String sourceId, String libraryId, String itemId, in ItemSimilaritiesInfo similarities);
    void bulkUpdate(String sourceId, in android.os.ParcelFileDescriptor entiresPipe);
    void beginSync(String sourceId);
    void endSync(String sourceId);
    String getSyncHash(String sourceId);
    void addFavorite(String libraryId, String key, int pos, boolean fromUser);
    void removeFavorite(String libraryId, String key, boolean fromUser);
    void addToCarousel(String libraryId, String key, boolean fromUser);
    void removeFromCarousel(String libraryId, String key, boolean fromUser);

    void updateForUser(String sourceId, String userId, String libraryId, String itemId, in ItemInfo fields);
    void deleteForUser(String sourceId, String userId, String libraryId, String itemId);
    void addFavoriteForUser(String userId, String libraryId, String key, int pos, boolean fromUser);
    void removeFavoriteForUser(String userId, String libraryId, String key, boolean fromUser);
    void addToCarouselForUser(String userId, String libraryId, String key, boolean fromUser, boolean isAccessed);
    void pinToCarousel(String userId, String libraryId, String key, int position, boolean fromUser);
    void pinToCarouselWithAccessed(String userId, String libraryId, String key, int position, boolean fromUser, boolean isAccessed);
    void unpinFromCarousel(String userId, String libraryId, String key, boolean fromUser);

    void removeFromCarouselForUser(String userId, String libraryId, String key, boolean fromUser);
    void setBannerAd(String userId, int bannerType, String key);
    void notifyThumbnailChange(String libraryId, String key);
    void notifyFTUEStart(String sourceId, String libraryId);
    void notifyFTUEEnd(String sourceId, String libraryId);
    void redirectVerbs(String sourceId, in List<String> libraryId, in List<String> verb, String targetSourceId, String packageName);

    void removeAllFromCarousel(String userId, String libraryId);
    void removeAllFromCarouselForSource(String userId, String libraryId, String sourceId);
    void readCarousel(String userId, String libraryId, in android.os.ParcelFileDescriptor entiresPipe);
    void readFavorites(String userId, String libraryId, in android.os.ParcelFileDescriptor entiresPipe);

    void query(String userId, String type, in android.os.ParcelFileDescriptor entiresPipe);
    String[] getFtueSyncState(String userId);

    void setWidget(String userId, String libraryId, String key, in WidgetInfo widgetInfo);
    void setBadge(String userId, String libraryId, String key, int badgeValue);
    void setExtendedBadge(String userId, String libraryId, String key, String badgeValue);

    void setMLTItem(String sourceId, String libraryId, String itemId, in MLTItemInfo mltInfo);
    void queryMLTItems(String userId, String itemId, in android.os.ParcelFileDescriptor entiresPipe);

    long createCollection(String userId, in ItemInfo fields);
    void updateCollection(String userId, in ItemInfo fields);
    void deleteCollection(String userId, long collectionId);
    void readCollection(String userId, long collectionId, in android.os.ParcelFileDescriptor entiresPipe);

    void addToCollection(String userId, long itemId, long collectionId, int position);
    void addToAndRemoveFromCollection(String userId, long collectionId, in long[] itemIdsToAdd, in long[] itemIdsToRemove);
    void removeFromCollection(String userId, long itemId, long collectionId);
    void removeFromAllCollections(String userId, String key, String libraryId);
    void reorderInCollection(String userId, long itemId, long collectionId, int position);

    void updateDownloadState(String libraryId, String key, int download_status);

    void deleteMLTItem(String sourceId, String libraryId, String itemId, in MLTItemInfo mltInfo);
    void readAllCollection(String userId, in android.os.ParcelFileDescriptor entiresPipe);

    ItemInfo querySingleItem(String userId, String queryUri);

    boolean isFTUEInProgress(String libraryId);

    void deleteMLTItemByType(String sourceId, String libraryId, String itemId, int mltTypes);
    void setLibraryRecommendations(String userId, String sourceId, String libraryId, in ItemInfoGroup libraryRecs);
    void queryLibraryRecommendations(String userId, String libraryId, in android.os.ParcelFileDescriptor entiresPipe);

    void saveSyncHash(String sourceUri, String syncHash, long lastUpdate);

    void readNewsstand(String userId, String sortOrder, String groupBy, in android.os.ParcelFileDescriptor entiresPipe);

    String[] getSuppressedPackages();
    void postAsDelivery(String userId, String libraryId, String id);
}