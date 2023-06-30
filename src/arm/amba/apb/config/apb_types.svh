typedef enum {
    APB2,   // Issue A
    APB3,   // Issue B
    APB4,   // Issue C
    APB5    // Issue E
} apb_version_t;

typedef enum {
    APB_REQUESTER,
    APB_COMPLETER,
    APB_MONITOR
} apb_agent_t;

