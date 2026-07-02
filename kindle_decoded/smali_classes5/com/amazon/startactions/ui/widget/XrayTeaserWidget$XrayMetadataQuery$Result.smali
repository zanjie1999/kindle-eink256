.class public Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final numImages:I

.field public final numPeople:I

.field public final numTerms:I

.field public final previewImages:[I


# direct methods
.method public constructor <init>(III[I)V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numPeople:I

    .line 663
    iput p2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numTerms:I

    .line 664
    iput p3, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numImages:I

    .line 665
    iput-object p4, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->previewImages:[I

    return-void
.end method
