.class public Lcom/amazon/kindle/speedreading/amplifier/NavigationPanel;
.super Ljava/lang/Object;
.source "NavigationPanel.java"


# static fields
.field private static final DEFAULT_MAX:I = 0x64

.field private static final DEFAULT_MIN:I = 0x0

.field private static final SNAP_THRESH:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.amplifier.NavigationPanel"


# instance fields
.field private amplifyController:Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;

.field private chapterScrubber:Lcom/amazon/kindle/speedreading/SnappableScrubberBar;

.field private chapterScrubberInitiatedNavigation:Z

.field private currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

.field private navigationBar:Lcom/amazon/kindle/speedreading/SystemMarginView;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method
