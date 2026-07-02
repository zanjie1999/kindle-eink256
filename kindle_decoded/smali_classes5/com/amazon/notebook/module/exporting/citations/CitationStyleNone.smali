.class public Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone;
.super Lcom/amazon/notebook/module/exporting/citations/CitationStyle;
.source "CitationStyleNone.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone;",
            ">;"
        }
    .end annotation
.end field

.field private static final METRICS_NAME:Ljava/lang/String; = "None"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone$1;

    invoke-direct {v0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone$1;-><init>()V

    sput-object v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public generate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getMetricsName()Ljava/lang/String;
    .locals 1

    const-string v0, "None"

    return-object v0
.end method
