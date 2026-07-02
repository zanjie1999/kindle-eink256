.class public final enum Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_messaging/zzx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_messaging/zzx;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field public static final enum MESSAGE_DELIVERED:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field public static final enum MESSAGE_OPEN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field public static final enum UNKNOWN_EVENT:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;


# instance fields
.field private final number_:I


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->UNKNOWN_EVENT:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->MESSAGE_DELIVERED:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->MESSAGE_OPEN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_EVENT"

    .line 1
    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->UNKNOWN_EVENT:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    const/4 v1, 0x1

    const-string v2, "MESSAGE_DELIVERED"

    .line 2
    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->MESSAGE_DELIVERED:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    const/4 v1, 0x2

    const-string v2, "MESSAGE_OPEN"

    .line 3
    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->MESSAGE_OPEN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 4
    invoke-static {}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->$values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
    .locals 1

    const-class v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
    .locals 1

    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 1
    invoke-virtual {v0}, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->number_:I

    return v0
.end method
