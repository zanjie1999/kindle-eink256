.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareProgressOnItemClickListener;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;
.source "ShareProgressOnItemClickListener.java"


# static fields
.field private static final LOG_FORMAT:Ljava/lang/String; = "%s: %s"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"


# instance fields
.field private final CLASS_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    .line 26
    const-class p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareProgressOnItemClickListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareProgressOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected composeShare()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareProgressOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Composing a progress share for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocialSharing"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->validateBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->entryPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z

    return-void
.end method
