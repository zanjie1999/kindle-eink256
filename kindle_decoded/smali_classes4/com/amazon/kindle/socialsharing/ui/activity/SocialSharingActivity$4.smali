.class Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$4;
.super Ljava/lang/Object;
.source "SocialSharingActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->getWhitelistedApps(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$4;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;)I
    .locals 0

    .line 395
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getPriority()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getPriority()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 390
    check-cast p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    check-cast p2, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$4;->compare(Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;)I

    move-result p1

    return p1
.end method
