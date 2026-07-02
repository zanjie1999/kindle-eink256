.class Lcom/amazon/kcp/reader/StandaloneShareHelper$1;
.super Ljava/lang/Object;
.source "StandaloneShareHelper.java"

# interfaces
.implements Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$UrlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandaloneShareHelper;->share(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandaloneShareHelper;Lcom/amazon/kcp/reader/share/ShareableInformation;Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
    .locals 0

    .line 248
    iput-object p3, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$1;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
