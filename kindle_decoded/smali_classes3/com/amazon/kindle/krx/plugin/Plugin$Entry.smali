.class public final enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
.super Ljava/lang/Enum;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/plugin/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/plugin/Plugin$Entry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

.field public static final enum application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

.field public static final enum bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

.field public static final enum bookopen_before:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

.field public static final enum content_change:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

.field public static final enum server_message:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 69
    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    const/4 v1, 0x0

    const-string v2, "application"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    .line 73
    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    const/4 v2, 0x1

    const-string v3, "bookopen_before"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_before:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    .line 77
    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    const/4 v3, 0x2

    const-string v4, "bookopen_after"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    .line 81
    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    const/4 v4, 0x3

    const-string v5, "content_change"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->content_change:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    .line 85
    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    const/4 v5, 0x4

    const-string v6, "server_message"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->server_message:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    .line 64
    sget-object v7, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_before:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->content_change:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->$VALUES:[Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    .locals 1

    .line 64
    const-class v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->$VALUES:[Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    return-object v0
.end method
