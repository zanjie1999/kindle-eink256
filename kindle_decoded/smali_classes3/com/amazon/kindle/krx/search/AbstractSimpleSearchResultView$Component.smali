.class public final enum Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;
.super Ljava/lang/Enum;
.source "AbstractSimpleSearchResultView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

.field public static final enum BODY:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

.field public static final enum CHILDREN:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

.field public static final enum DECORATOR:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

.field public static final enum FOOTER:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

.field public static final enum TITLE:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 133
    new-instance v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    const/4 v1, 0x0

    const-string v2, "BODY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->BODY:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    .line 134
    new-instance v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    const/4 v2, 0x1

    const-string v3, "CHILDREN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->CHILDREN:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    .line 135
    new-instance v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    const/4 v3, 0x2

    const-string v4, "DECORATOR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->DECORATOR:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    .line 136
    new-instance v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    const/4 v4, 0x3

    const-string v5, "FOOTER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->FOOTER:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    .line 137
    new-instance v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    const/4 v5, 0x4

    const-string v6, "TITLE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->TITLE:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    .line 131
    sget-object v7, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->BODY:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->CHILDREN:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->DECORATOR:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->FOOTER:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->$VALUES:[Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;
    .locals 1

    .line 131
    const-class v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;
    .locals 1

    .line 131
    sget-object v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->$VALUES:[Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    return-object v0
.end method
