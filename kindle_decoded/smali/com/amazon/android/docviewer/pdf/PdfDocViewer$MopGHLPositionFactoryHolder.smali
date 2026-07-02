.class Lcom/amazon/android/docviewer/pdf/PdfDocViewer$MopGHLPositionFactoryHolder;
.super Ljava/lang/Object;
.source "PdfDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MopGHLPositionFactoryHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/android/docviewer/MopGHLPositionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 922
    new-instance v0, Lcom/amazon/android/docviewer/MopGHLPositionFactory;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/MopGHLPositionFactory;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$MopGHLPositionFactoryHolder;->INSTANCE:Lcom/amazon/android/docviewer/MopGHLPositionFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
