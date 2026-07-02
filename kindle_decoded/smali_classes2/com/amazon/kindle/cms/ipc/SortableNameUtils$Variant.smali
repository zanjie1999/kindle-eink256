.class public final enum Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;
.super Ljava/lang/Enum;
.source "SortableNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/SortableNameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Variant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

.field public static final enum Artist:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

.field public static final enum Author:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

.field public static final enum Title:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;


# instance fields
.field private final m_displayColumn:Ljava/lang/String;

.field private final m_displayKey:I

.field private final m_languageColumn:Ljava/lang/String;

.field private final m_languageKey:I

.field private final m_sortColumn:Ljava/lang/String;

.field private final m_sortKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 22
    new-instance v9, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    const-string v1, "Title"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0x16

    const-string v6, "title"

    const-string v7, "sort_title"

    const-string v8, "title_language"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Title:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    .line 26
    new-instance v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    const-string v11, "Author"

    const/4 v12, 0x1

    const/16 v13, 0x47

    const/16 v14, 0x48

    const/16 v15, 0x49

    const-string v16, "author"

    const-string v17, "sort_author"

    const-string v18, "author_language"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Author:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    .line 30
    new-instance v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    const-string v2, "Artist"

    const/16 v4, 0x33

    const/16 v5, 0x36

    const/16 v6, 0x37

    const-string v7, "artist"

    const-string v8, "sort_artist"

    const-string v9, "artist_language"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Artist:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    .line 20
    sget-object v2, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Title:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Author:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->$VALUES:[Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_displayKey:I

    .line 61
    iput p4, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_sortKey:I

    .line 62
    iput p5, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_languageKey:I

    .line 63
    iput-object p6, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_displayColumn:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_sortColumn:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_languageColumn:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->$VALUES:[Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    return-object v0
.end method


# virtual methods
.method public setItemInfoFromSortableName(Lcom/amazon/kindle/cms/ipc/ItemInfo;Lcom/amazon/kindle/cms/api/SortableName;)V
    .locals 2

    .line 37
    invoke-static {p2}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->validate(Lcom/amazon/kindle/cms/api/SortableName;)V

    .line 38
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_displayKey:I

    invoke-virtual {p2}, Lcom/amazon/kindle/cms/api/SortableName;->getDisplayValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_sortKey:I

    invoke-virtual {p2}, Lcom/amazon/kindle/cms/api/SortableName;->getSortValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->m_languageKey:I

    invoke-virtual {p2}, Lcom/amazon/kindle/cms/api/SortableName;->getLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    return-void
.end method
