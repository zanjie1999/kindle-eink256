.class public final Lcom/audible/mobile/download/provider/DownloadContract;
.super Ljava/lang/Object;
.source "DownloadContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Lcom/audible/mobile/provider/Authority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/audible/mobile/provider/Authority;

    const-string v1, "download.provider"

    invoke-direct {v0, v1}, Lcom/audible/mobile/provider/Authority;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/download/provider/DownloadContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    return-void
.end method
