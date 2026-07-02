.class public final enum Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;
.super Ljava/lang/Enum;
.source "AbstractTableOfContentsEntryEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DividerLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

.field public static final enum DEFAULT:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

.field public static final enum NO_DIVIDER:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

.field public static final enum ZERO_PADDING:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 120
    new-instance v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->DEFAULT:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    .line 125
    new-instance v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    const/4 v2, 0x1

    const-string v3, "ZERO_PADDING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->ZERO_PADDING:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    .line 130
    new-instance v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    const/4 v3, 0x2

    const-string v4, "NO_DIVIDER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->NO_DIVIDER:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    .line 116
    sget-object v5, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->DEFAULT:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->ZERO_PADDING:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->$VALUES:[Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;
    .locals 1

    .line 116
    const-class v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->$VALUES:[Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    return-object v0
.end method
