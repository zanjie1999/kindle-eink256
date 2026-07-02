.class public final enum Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;
.super Ljava/lang/Enum;
.source "GraphObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

.field public static final enum ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

.field public static final enum GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

.field public static final enum SECTION_HEADER:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 81
    new-instance v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v1, 0x0

    const-string v2, "GRAPH_OBJECT"

    invoke-direct {v0, v2, v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    .line 82
    new-instance v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v2, 0x1

    const-string v3, "SECTION_HEADER"

    invoke-direct {v0, v3, v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    .line 83
    new-instance v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v3, 0x2

    const-string v4, "ACTIVITY_CIRCLE"

    invoke-direct {v0, v4, v3}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    .line 80
    sget-object v5, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    aput-object v5, v4, v1

    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->$VALUES:[Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;
    .locals 1

    .line 80
    const-class v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    return-object p0
.end method

.method public static values()[Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;
    .locals 1

    .line 80
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->$VALUES:[Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v0}, [Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    return-object v0
.end method
