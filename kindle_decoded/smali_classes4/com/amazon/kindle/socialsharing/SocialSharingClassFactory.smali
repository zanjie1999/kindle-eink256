.class public Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;
.super Ljava/lang/Object;
.source "SocialSharingClassFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSocialSharingActivityClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 48
    const-class p1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;

    return-object p1
.end method
