.class Lcom/audible/android/kcp/download/callback/DownloadNotificationListener$1;
.super Ljava/lang/Object;
.source "DownloadNotificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->refreshLibraryCovers(Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V
    .locals 0

    .line 145
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener$1;->val$libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener$1;->val$libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->refreshLibraryCovers()V

    return-void
.end method
