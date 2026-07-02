.class public final Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManagerKt;
.super Ljava/lang/Object;
.source "LibrarySharedFilterRegistrationManager.kt"


# static fields
.field private static final IMAGE_RES_ID:I = -0x1

.field private static final MIN_HOUSEHOLD_MEMBERS:I = 0x2

.field private static final SHARED_ITEMS_FILTER_PRIORITY:I = 0xd

.field private static final SHARED_LIBRARY_GROUP_PRIORITY:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field private static final YOUR_ITEMS_FILTER_PRIORITY:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LibraryShar\u2026ationManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManagerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManagerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
