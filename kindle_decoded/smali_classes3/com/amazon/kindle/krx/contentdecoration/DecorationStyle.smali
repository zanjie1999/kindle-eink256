.class public final enum Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
.super Ljava/lang/Enum;
.source "DecorationStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum AmplifyHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum Custom:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum Highlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum Icon:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum Text:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field public static final enum WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v1, 0x0

    const-string v2, "Highlight"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Highlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 24
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v2, 0x1

    const-string v3, "TransientHighlight"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v3, 0x2

    const-string v4, "Line"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v4, 0x3

    const-string v5, "Text"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Text:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 27
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v5, 0x4

    const-string v6, "Icon"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Icon:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 28
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v6, 0x5

    const-string v7, "WordWise"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 29
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v7, 0x6

    const-string v8, "AmplifyHighlight"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->AmplifyHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/4 v8, 0x7

    const-string v9, "Custom"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Custom:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 9
    sget-object v10, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Highlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Text:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Icon:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->AmplifyHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->$VALUES:[Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->$VALUES:[Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method
