.class synthetic Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$12;
.super Ljava/lang/Object;
.source "TooltipTutorialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 368
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/Orientation;->values()[Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$12;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/Orientation;->LEFT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$12;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/Orientation;->RIGHT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$12;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$12;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/Orientation;->BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
