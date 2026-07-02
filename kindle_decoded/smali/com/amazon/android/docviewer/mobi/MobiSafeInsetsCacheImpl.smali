.class public final Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;
.super Ljava/lang/Object;
.source "MobiSafeInsetsCache.kt"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;


# instance fields
.field private pair:Lcom/amazon/kcp/util/device/SafeInsetsPair;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPersistedSafeInsetsPair(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsetsPair;
    .locals 7

    .line 79
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MOBI_SAFE_INSETS_PREF"

    invoke-interface {v0, v2, v1, p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p1

    .line 81
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    const-string v2, "PREF_SAFE_INSET_PORT_LEFT"

    invoke-virtual {p1, v2, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "PREF_SAFE_INSET_PORT_RIGHT"

    .line 82
    invoke-virtual {p1, v3, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "PREF_SAFE_INSET_PORT_TOP"

    .line 83
    invoke-virtual {p1, v4, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "PREF_SAFE_INSET_PORT_BOTTOM"

    .line 84
    invoke-virtual {p1, v5, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 81
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    .line 85
    new-instance v2, Lcom/amazon/kcp/util/device/SafeInsets;

    const-string v3, "PREF_SAFE_INSET_LAND_LEFT"

    invoke-virtual {p1, v3, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "PREF_SAFE_INSET_LAND_RIGHT"

    .line 86
    invoke-virtual {p1, v4, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "PREF_SAFE_INSET_LAND_TOP"

    .line 87
    invoke-virtual {p1, v5, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "PREF_SAFE_INSET_LAND_BOTTOM"

    .line 88
    invoke-virtual {p1, v6, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 85
    invoke-direct {v2, v3, v4, v5, p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    .line 89
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsetsPair;

    invoke-direct {p1, v0, v2}, Lcom/amazon/kcp/util/device/SafeInsetsPair;-><init>(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;)V

    return-object p1
.end method

.method private final persistSafeInsetsPair(Lcom/amazon/kcp/util/device/SafeInsetsPair;Landroid/content/Context;)V
    .locals 3

    .line 93
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "MOBI_SAFE_INSETS_PREF"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p2

    .line 95
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getPortraitSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_SAFE_INSET_PORT_LEFT"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 96
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getPortraitSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_SAFE_INSET_PORT_RIGHT"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 97
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getPortraitSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_SAFE_INSET_PORT_TOP"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 98
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getPortraitSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_SAFE_INSET_PORT_BOTTOM"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 99
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getLandscapeSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_SAFE_INSET_LAND_LEFT"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 100
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getLandscapeSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_SAFE_INSET_LAND_RIGHT"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getLandscapeSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_SAFE_INSET_LAND_TOP"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getLandscapeSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "PREF_SAFE_INSET_LAND_BOTTOM"

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    return-void
.end method


# virtual methods
.method public getSafeInsetsPair(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsetsPair;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;->pair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;->getPersistedSafeInsetsPair(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsetsPair;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;->pair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

    :cond_0
    return-object v0
.end method

.method public setSafeInsetsPair(Lcom/amazon/kcp/util/device/SafeInsetsPair;Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "newPair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;->pair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;->pair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;->persistSafeInsetsPair(Lcom/amazon/kcp/util/device/SafeInsetsPair;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
