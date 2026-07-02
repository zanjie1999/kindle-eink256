.class public Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;
.super Ljava/lang/Object;
.source "SelectionTutorialProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickHighlightEvent"
.end annotation


# instance fields
.field final annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field final color:Ljava/lang/String;

.field final totalAnnotations:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;->color:Ljava/lang/String;

    .line 263
    iput p2, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;->totalAnnotations:I

    .line 264
    iput-object p3, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
