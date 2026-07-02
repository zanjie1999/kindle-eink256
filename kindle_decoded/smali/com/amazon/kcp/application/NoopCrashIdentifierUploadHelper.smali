.class final Lcom/amazon/kcp/application/NoopCrashIdentifierUploadHelper;
.super Ljava/lang/Object;
.source "CrashIdentifierUploadHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrashIdentifier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousCrashIdentifier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
