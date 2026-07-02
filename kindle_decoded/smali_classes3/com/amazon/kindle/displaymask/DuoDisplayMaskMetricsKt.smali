.class public final Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetricsKt;
.super Ljava/lang/Object;
.source "DuoDisplayMaskMetrics.kt"


# static fields
.field private static final ACTIVE_MASK:Ljava/lang/String; = "DisplayMaskActive"

.field private static final ADD_MASK:Ljava/lang/String; = "DisplayMaskAdded"

.field private static final BOOK_OPENED_KEY:Ljava/lang/String; = "BookOpened"

.field private static final FM_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final FM_EVENT_VALUE:Ljava/lang/String; = "event_value"

.field private static final HAS_DISPLAY_MASK:Ljava/lang/String; = "HasDisplayMask"

.field private static final MAIN_ACTIVITY_KEY:Ljava/lang/String; = "ChangedMainActivity"

.field private static final NO_ACTIVE_MASK:Ljava/lang/String; = "NoDisplayMask"

.field private static final READER_ACTIVITY_KEY:Ljava/lang/String; = "ChangedReaderActivity"

.field private static final REMOVE_MASK:Ljava/lang/String; = "DisplayMaskRemoved"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(DuoDisplayMaskMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetricsKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetricsKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
