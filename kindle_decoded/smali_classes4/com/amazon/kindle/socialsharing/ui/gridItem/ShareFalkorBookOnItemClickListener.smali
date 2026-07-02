.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareFalkorBookOnItemClickListener;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;
.source "ShareFalkorBookOnItemClickListener.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final LOG_FORMAT:Ljava/lang/String; = "%s: %s"

.field private static final LOG_TAG:Ljava/lang/String; = "FalkorSocialSharing"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareFalkorBookOnItemClickListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareFalkorBookOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    return-void
.end method


# virtual methods
.method protected composeShare()V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    sget-object v2, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareFalkorBookOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Composing Kindle Vella story share for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FalkorSocialSharing"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->entryPoint:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareContent:Lcom/amazon/kindle/socialsharing/ShareContent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareFalkorBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z

    return-void
.end method
