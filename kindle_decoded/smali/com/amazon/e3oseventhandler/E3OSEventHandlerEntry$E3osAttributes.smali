.class public final enum Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;
.super Ljava/lang/Enum;
.source "E3OSEventHandlerEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "E3osAttributes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

.field public static final enum E3OS_DISPLAY_FEATURE_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

.field public static final enum E3OS_DISPLAY_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

.field public static final enum E3OS_GHOSTING_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

.field public static final enum E3OS_SCROLL_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

.field public static final enum E3OS_WIDGET_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

.field public static final enum E3OS_WINDOW_SYNCH_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

.field public static final enum EOS_WIDGET_CONTROL_HANDLER:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;


# instance fields
.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 163
    new-instance v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v1, 0x0

    const-string v2, "E3OS_DISPLAY_MODE"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_DISPLAY_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    .line 167
    new-instance v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v2, 0x1

    const-string v3, "E3OS_GHOSTING_MODE"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_GHOSTING_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    .line 171
    new-instance v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v3, 0x2

    const-string v4, "E3OS_WIDGET_CONTROL"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_WIDGET_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    .line 175
    new-instance v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v4, 0x3

    const-string v5, "EOS_WIDGET_CONTROL_HANDLER"

    const-string v6, "E3OS_WIDGET_CONTROL_HANDLER"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->EOS_WIDGET_CONTROL_HANDLER:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    .line 179
    new-instance v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v5, 0x4

    const-string v6, "E3OS_WINDOW_SYNCH_MODE"

    invoke-direct {v0, v6, v5, v6}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_WINDOW_SYNCH_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    .line 183
    new-instance v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v6, 0x5

    const-string v7, "E3OS_SCROLL_CONTROL"

    invoke-direct {v0, v7, v6, v7}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_SCROLL_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    .line 187
    new-instance v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v7, 0x6

    const-string v8, "E3OS_DISPLAY_FEATURE_CONTROL"

    invoke-direct {v0, v8, v7, v8}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_DISPLAY_FEATURE_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    .line 159
    sget-object v9, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_DISPLAY_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_GHOSTING_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_WIDGET_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->EOS_WIDGET_CONTROL_HANDLER:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_WINDOW_SYNCH_MODE:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->E3OS_SCROLL_CONTROL:Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->$VALUES:[Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;
    .locals 1

    .line 159
    const-class v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;
    .locals 1

    .line 159
    sget-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->$VALUES:[Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    invoke-virtual {v0}, [Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    return-object v0
.end method
