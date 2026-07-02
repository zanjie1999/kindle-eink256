.class public final Lcom/amazon/whispersync/communication/CommunicationServiceConstants$ACQUIRE_CONNECTION_STATUS;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/CommunicationServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ACQUIRE_CONNECTION_STATUS"
.end annotation


# static fields
.field public static final MISSING_CREDENTIALS_ERROR:I = 0x2

.field public static final NETWORK_CONNECTIVITY_ERROR:I = 0x4

.field public static final SECURE_PORT_NOT_DEFINED_ERROR:I = 0x6

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_ERROR:I = 0x1

.field public static final UNREACHABLE_ENDPOINT_ERROR:I = 0x3

.field public static final WIFI_UNAVAILABLE_ERROR:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/communication/CommunicationServiceConstants;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/communication/CommunicationServiceConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/CommunicationServiceConstants$ACQUIRE_CONNECTION_STATUS;->this$0:Lcom/amazon/whispersync/communication/CommunicationServiceConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
