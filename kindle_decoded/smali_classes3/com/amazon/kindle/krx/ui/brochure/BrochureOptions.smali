.class public final Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;
.super Ljava/lang/Object;
.source "BrochureOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$SimpleBrochureListener;,
        Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;,
        Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;
    }
.end annotation


# instance fields
.field public actionButtonString:Ljava/lang/String;

.field public animate:Z

.field public clickstreamPageType:Ljava/lang/String;

.field public contextName:Ljava/lang/String;

.field public listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

.field public orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->clickstreamPageType:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->NONE:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->animate:Z

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    .line 107
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->actionButtonString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->clickstreamPageType:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->NONE:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->animate:Z

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    .line 107
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->actionButtonString:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->clickstreamPageType:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->clickstreamPageType:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    .line 128
    iget-boolean v0, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->animate:Z

    iput-boolean v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->animate:Z

    .line 129
    iget-object v0, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    .line 130
    iget-object p1, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->actionButtonString:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->actionButtonString:Ljava/lang/String;

    return-void
.end method
