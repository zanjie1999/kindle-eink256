.class public Lcom/amazon/kcp/library/LibraryFilterItem;
.super Ljava/lang/Object;
.source "LibraryFilterItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;,
        Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;
    }
.end annotation


# instance fields
.field private final constraint:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private final contentDescriptionFormatArgs:[Ljava/lang/Object;

.field private final contentDescriptionResId:I

.field private disabled:Z

.field private filterViewType:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

.field private final id:Ljava/lang/String;

.field private final imageResId:I

.field private isBrand:Z

.field private final priority:I

.field private final titleFormatArgs:[Ljava/lang/Object;

.field private final titleResId:I

.field private final visibilityStrategy:Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 81
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;I[Ljava/lang/Object;I[Ljava/lang/Object;ILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;I[Ljava/lang/Object;I[Ljava/lang/Object;ILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;Z)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Library Filter Item Id shouldn\'t contain \'_\' character."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->id:Ljava/lang/String;

    .line 113
    iput p2, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->priority:I

    .line 114
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->constraint:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 115
    iput p4, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->contentDescriptionResId:I

    .line 116
    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->contentDescriptionFormatArgs:[Ljava/lang/Object;

    .line 117
    iput p6, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->titleResId:I

    .line 118
    iput-object p7, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->titleFormatArgs:[Ljava/lang/Object;

    .line 119
    iput p8, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->imageResId:I

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->disabled:Z

    .line 121
    iput-object p9, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->visibilityStrategy:Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;

    .line 122
    iput-object p10, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->filterViewType:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    .line 123
    iput-boolean p11, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->isBrand:Z

    return-void
.end method


# virtual methods
.method public getConstraint()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->constraint:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-object v0
.end method

.method public getContentDescriptionFormatArgs()[Ljava/lang/Object;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->contentDescriptionFormatArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDescriptionResId()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->contentDescriptionResId:I

    return v0
.end method

.method public getEmptyLibraryStringId(Lcom/amazon/kindle/krx/library/LibraryGroupType;)I
    .locals 0

    .line 217
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->empty_library_title:I

    return p1
.end method

.method public getFilterViewType()Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->filterViewType:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 0

    .line 186
    iget p1, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->imageResId:I

    return p1
.end method

.method public getPriority()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->priority:I

    return v0
.end method

.method public getTitleFormatArgs()[Ljava/lang/Object;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->titleFormatArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->titleResId:I

    return v0
.end method

.method public getVisibilityStrategy()Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->visibilityStrategy:Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterItem;->visibilityStrategy:Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;

    invoke-interface {v0}, Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;->isVisible()Z

    move-result v0

    return v0
.end method
