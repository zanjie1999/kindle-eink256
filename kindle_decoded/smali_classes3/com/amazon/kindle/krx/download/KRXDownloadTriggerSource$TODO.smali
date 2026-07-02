.class public final Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;
.super Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
.source "KRXDownloadTriggerSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TODO"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "componentArea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
