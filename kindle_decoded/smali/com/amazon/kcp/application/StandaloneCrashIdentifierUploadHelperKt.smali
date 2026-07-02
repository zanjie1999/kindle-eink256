.class public final Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelperKt;
.super Ljava/lang/Object;
.source "StandaloneCrashIdentifierUploadHelper.kt"


# static fields
.field private static final CRASH_IDENTIFIER_KEY:Ljava/lang/String; = "CRASH_IDENTIFIER"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-class v0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(StandaloneC\u2026UploadHelper::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelperKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelperKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
