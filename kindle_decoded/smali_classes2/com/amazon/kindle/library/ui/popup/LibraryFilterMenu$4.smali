.class synthetic Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$4;
.super Ljava/lang/Object;
.source "LibraryFilterMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 285
    invoke-static {}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->values()[Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$4;->$SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$4;->$SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
