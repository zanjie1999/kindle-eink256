.class public final Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;
.super Ljava/lang/Object;
.source "MobiSafeInsetsCache.kt"


# static fields
.field private static final cache:Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;-><init>()V

    .line 23
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;->cache:Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCache()Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;->cache:Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheImpl;

    return-object v0
.end method
