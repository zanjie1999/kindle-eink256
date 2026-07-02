.class public abstract Lcom/facebook/widget/FacebookDialog$Builder;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$Builder<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected final appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field protected final applicationId:Ljava/lang/String;

.field protected applicationName:Ljava/lang/String;

.field protected fragment:Landroidx/fragment/app/Fragment;

.field protected imageAttachmentFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected imageAttachments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    .line 502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    const-string v0, "activity"

    .line 510
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    .line 513
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    .line 514
    new-instance p1, Lcom/facebook/widget/FacebookDialog$PendingCall;

    const v0, 0xfacf

    invoke-direct {p1, v0}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/widget/FacebookDialog;
    .locals 8

    .line 567
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 569
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog;->access$100(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/widget/FacebookDialog;->access$200(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/facebook/widget/FacebookDialog;->access$300(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 574
    invoke-static {v4}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getMethodArguments()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 579
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Lcom/facebook/widget/FacebookDialog$Builder;->setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    :goto_0
    move-object v7, v1

    .line 582
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    move-object v3, v0

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 598
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$600(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V

    .line 600
    new-instance v0, Lcom/facebook/widget/FacebookDialog;

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V

    return-object v0

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroidx/fragment/app/Fragment;

    const-string v3, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/facebook/widget/FacebookDialog;->access$400(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed"

    invoke-static {v1, v2, v0, v3}, Lcom/facebook/widget/FacebookDialog;->access$500(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to create Intent; this likely means the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract getDialogFeatures()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getMethodArguments()Landroid/os/Bundle;
.end method

.method getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .locals 1

    .line 618
    new-instance v0, Lcom/facebook/widget/FacebookDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/FacebookDialog$Builder$1;-><init>(Lcom/facebook/widget/FacebookDialog$Builder;)V

    return-object v0
.end method

.method protected putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 673
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method validate()V
    .locals 0

    return-void
.end method
