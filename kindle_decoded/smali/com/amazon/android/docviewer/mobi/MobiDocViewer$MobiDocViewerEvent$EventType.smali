.class public final enum Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;
.super Ljava/lang/Enum;
.source "MobiDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

.field public static final enum FOOTER_LOCATION_CHANGED:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2757
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "FOOTER_LOCATION_CHANGED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;->FOOTER_LOCATION_CHANGED:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    aput-object v0, v2, v1

    .line 2756
    sput-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;->$VALUES:[Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2756
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;
    .locals 1

    .line 2756
    const-class v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;
    .locals 1

    .line 2756
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;->$VALUES:[Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    return-object v0
.end method
