.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"


# static fields
.field private static final DEFAULT_REQUEST_CODE:I = 0x3f2

.field private static final EXTENDED_LOADING_TEXT_HOLD_TIME:J = 0xfa0L

.field private static final LOADING_BOOK_REPEAT_INTERVAL:J = 0xfa0L

.field private static final MAX_PERCENTAGE_FOR_EXTENDED_MESSAGING:I = 0x55

.field private static final MIN_DISPLAY_TIME:J = 0x3e8L

.field private static final MRPR_MAX_WAIT:J = 0x3e8L

.field private static final NON_COVER_VIEWS_FADE_IN_DURATION:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(BookOpenActivity::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
