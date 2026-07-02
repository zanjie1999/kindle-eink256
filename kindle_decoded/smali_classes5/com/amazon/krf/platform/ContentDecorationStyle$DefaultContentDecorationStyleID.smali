.class public final enum Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;
.super Ljava/lang/Enum;
.source "ContentDecorationStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ContentDecorationStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultContentDecorationStyleID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

.field public static final enum INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

.field public static final enum NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

.field public static final enum POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

.field public static final enum SNAPSHOT_NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

.field public static final enum WORDWISE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    const/4 v2, 0x1

    const-string v3, "NOTE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    const/4 v3, 0x2

    const-string v4, "SNAPSHOT_NOTE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->SNAPSHOT_NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    const/4 v4, 0x3

    const-string v5, "POPULAR_HIGHLIGHT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    const/4 v5, 0x4

    const-string v6, "WORDWISE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->WORDWISE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    .line 13
    sget-object v7, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->SNAPSHOT_NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->$VALUES:[Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->$VALUES:[Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    return-object v0
.end method
