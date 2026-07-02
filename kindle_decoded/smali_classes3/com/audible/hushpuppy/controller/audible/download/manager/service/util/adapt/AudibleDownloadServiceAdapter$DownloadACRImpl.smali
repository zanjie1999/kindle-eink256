.class public final Lcom/audible/hushpuppy/controller/audible/download/manager/service/util/adapt/AudibleDownloadServiceAdapter$DownloadACRImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "AudibleDownloadServiceAdapter.java"

# interfaces
.implements Lcom/audible/mobile/domain/ACR;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/ACR;",
        ">;",
        "Lcom/audible/mobile/domain/ACR;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/ACR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/util/adapt/AudibleDownloadServiceAdapter$DownloadACRImpl$1;

    invoke-direct {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/util/adapt/AudibleDownloadServiceAdapter$DownloadACRImpl$1;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/util/adapt/AudibleDownloadServiceAdapter$DownloadACRImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method
